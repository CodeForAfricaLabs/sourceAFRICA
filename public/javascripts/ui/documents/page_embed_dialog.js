dc.ui.PageEmbedDialog = dc.ui.Dialog.extend({

  events : {
    'click .next'           : 'nextStep',
    'click .previous'       : 'previousStep',
    'click .close'          : 'close',
    'click .snippet'        : 'selectSnippet',
    'click .set_publish_at' : 'openPublishAtDialog',
    'click .edit_access'    : 'editAccessLevel',
    'click .remove_lines'   : 'removeLines',
    'change .page_select'   : 'changePageSelect',
  },

  totalSteps : 2,

  STEPS : [null,
    _.t('embed_page_step_one_title'),
    _.t('embed_page_step_two_title')
  ],

  DEMO_ERROR : _.t('embed_demo_error','<a href="/contact">','</a>','<a href="/help/publishing#step_5">','</a>'),

  DEFAULT_OPTIONS : {},

  constructor : function(doc) {
    this.currentStep   = 1;
    this.doc           = doc;
    this.height        = 0;
    dc.ui.spinner.show();
    dc.ui.Dialog.call(this, {mode : 'custom', title : this.displayTitle()});
    this.render();
  },

  render : function() {
    if (dc.account.organization().get('demo')) return dc.ui.Dialog.alert(this.DEMO_ERROR);
    dc.ui.Dialog.prototype.render.call(this);
    this.preselectPage();
    this.$('.custom').html(JST['workspace/page_embed_dialog']({
      doc             : this.doc,
      pageCount       : this.doc.get('page_count'),
      selectedPageNum : this._selectedPage,
    }));
    this.$next           = this.$('.next');
    this.$previous       = this.$('.previous');
    this.$pageSelect     = this.$('.page_select');
    this.$preview        = this.$('.page_preview');
    this.$previewWrapper = this.$('.page_preview_section');
    this.$embedCode      = this.$('.publish_embed_code');
    this.setMode('embed', 'dialog');
    this.setMode('page_embed', 'dialog');
    this.update();
    this.setStep();
    this.center();
    dc.ui.spinner.hide();
    return this;
  },

  displayTitle : function() {
    return this.STEPS[this.currentStep];
  },

  preselectPage : function() {
    // There must be a better way to pluck the current page
    if (!_.isUndefined(window.DV)) {
      if (_.has(window.DV, 'viewers')) {
        if (_.size(window.DV.viewers) == 1) {
          var viewer = _.sample(window.DV.viewers);
          var currentPage = viewer.models.document.currentPage();
          if (currentPage > 0) {
            this._selectedPage = currentPage
          }
        }
      }
    }
  },

  changePageSelect : function() {
    var pageNumber = this.$pageSelect.val();
    this.selectPage(pageNumber);
  },

  selectPage : function(pageNumber) {
    if (pageNumber > 0) {
      this._selectedPage = pageNumber;
    } else {
      this._selectedPage = null;
    }
    this.setStep();
    this.update();
  },

  update : function() {
    var pageSelected = this._selectedPage > 0;
    if (this._selectedPage > 0) {
      this.$previewWrapper.show();
      this._renderEmbedCode();
      this._renderPage();
      if (this.$preview.height() > this.height) {
        this.height = this.$preview.height();
      }
    } else {
      this.$previewWrapper.hide();
    }
    this.center();
  },

  // Remove line breaks from the viewer embed.
  removeLines : function() {
    var $html_snippet = this.$('#page_embed_html_snippet');
    $html_snippet.val($html_snippet.val().replace(/[\r\n]/g, ''));
  },

  _renderPage : function() {
    this.$preview.html(this.$('#page_embed_html_snippet').val());
  },

  embedOptions : function() {
    var options = {};
    return options;
  },

  _renderEmbedCode : function() {
    var options = this.embedOptions();
    this.$embedCode.html(JST['workspace/page_embed_code']({
      doc:              this.doc,
      docTitle:         this.doc.get('title'),
      docContributor:   this.doc.get('account_name'),
      docOrganization:  this.doc.get('organization_name'),
      pagePermalink:    this._pagePermalink(),
      pageNumber:       this._selectedPage,
      pageImageUrl:     this._pageImageUrl(this._selectedPage),
      pageTextUrl:      this._pageTextUrl(this._selectedPage),
      options:          _.map(options, function(value, key){ return key + ': ' + value; }).join(',\n    '),
      shortcodeOptions: options ? ' ' + _.map(options, function(value, key) { return key + '=' + (typeof value == 'string' ? value.replace(/\"/g, '&quot;') : value); }).join(' ') : '',
    }));
  },

  _pagePermalink: function() {
    return this.doc.get('document_viewer_url') + '#document/p' + this._selectedPage;
  },

  _pageImageUrl: function(pageNumber, size) {
    size = size || 'normal';
    return this.doc.get('page_image_url').replace('{page}', pageNumber).replace('{size}', size);
  },

  _pageTextUrl: function(pageNumber) {
    return this.doc.get('page_text_url').replace('{page}', pageNumber);
  },

  _pageImages : function() {
    var pageImages = [];
    _.times(this.doc.get('page_count'), function(pageNumber) {
      pageImages.push(this._pageImageUrl(pageNumber + 1, 'small'));
    }, this);
    return pageImages;
  },

  nextStep : function() {
    if (this._selectedPage > 0) {
      this.currentStep += 1;
      if (this.currentStep > this.totalSteps) return this.close();
      if (this.currentStep == 2) this.update();
      this.setStep();
    }
  },

  previousStep : function() {
    if (this.currentStep > 1) this.currentStep -= 1;
    this.setStep();
  },

  setStep : function() {
    this.title(this.displayTitle());

    this.$('.publish_step').setMode('not', 'enabled');
    this.$('.publish_step_'+this.currentStep).setMode('is', 'enabled');
    this.info( _.t('step_x_of_x', this.currentStep, this.totalSteps), true);

    var first = this.currentStep == 1;
    var last = this.currentStep == this.totalSteps;

    // On the first page only, require a page has been selected
    var nextEnabled = !first || (this._selectedPage > 0);

    this.$previous.setMode(first ? 'not' : 'is', 'enabled');
    this.$next.html(last ? _.t('finish') : _.t('next') + ' &raquo;').setMode(nextEnabled ? 'is' : 'not', 'enabled');
  },

  selectSnippet : function(e) {
    this.$(e.target).closest('.snippet').select();
  },

  // If necessary, let the user change the document's access level before embedding.
  editAccessLevel : function() {
    this.close();
    Documents.editAccess([this.doc]);
  },

  // Optionally, set a document `publish_at` time by opening a new dialog.
  openPublishAtDialog : function() {
    this.close();
    new dc.ui.PublicationDateDialog([this.doc]);
  }

});
