PaymentChargeFormModel=dc.ui.FormModel.extend({VALIDATIONS:{amount:["isCurrency"],card_name:["isntBlank"],card_number:["isInteger"],card_verification_code:["isInteger"],card_expiry:["isMMYY"],billing_postal_code:["isntBlank"]},initialize:function(){dc.ui.FormModel.prototype.initialize.call(this)},url:function(){}});
PaymentChargeFormView=dc.ui.FormView.extend({paymentChargeFormEvents:{submit:"submit"},initialize:function(b){dc.ui.FormView.prototype.initialize.call(this,b);this.events=_.extend({},this.events,this.signupFormEvents);_.bindAll(this,"saveSuccess","saveError")},render:function(){},submit:function(b){b.preventDefault();this.disableForm();this.model.save({},{success:this.saveSuccess,error:this.saveError})||(this.enableForm(),this.displayValidationErrors(),this.$(".invalid").scrollTo())},saveSuccess:function(b,
a){this.replaceWithAlert("<b>Success!</b> The card was successfully processed",{type:"success"});this.$el.scrollTo()},saveError:function(b,a){this.enableForm();this.alert("<b>Clonk</b>, that didn\u2019t work. Check everything and try again?",{type:"error"});this.$currentAlert.scrollTo()},replaceWithAlert:function(b,a){var c=this.makeAlert(b,a);this.$el.animate({height:"toggle",opacity:"toggle"},250,function(){$(this).html(c).animate({height:"toggle",opacity:"toggle"})})},makeAlert:function(b,a){this.$currentAlert&&
this.$currentAlert.remove();this.$currentAlert=Backbone.$('<div class="alert_v2"></div>').html(b);_.has(a,"type")&&this.$currentAlert.addClass(a.type);return this.$currentAlert},alert:function(b,a){a=a||{};this.makeAlert(b,a);var c=_.find(["before","after","prepend","append"],function(b){return _.has(a,b)});_.isUndefined(c)&&(c="prepend",a.prepend=!0);if(_.isBoolean(a[c]))this.$el[c](this.$currentAlert);else Backbone.$(a[c])[c](this.$currentAlert)}});
$(function(){window.paymentChargeModel=new PaymentChargeFormModel({});window.paymentCharge=new PaymentChargeFormView({model:paymentChargeModel,el:$("#test_payment_form")})});
