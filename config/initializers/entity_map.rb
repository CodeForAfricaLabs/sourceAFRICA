# This file, which is the canonical mapping between Calais and sourceAFRICA
# Entity kinds, is used by both the Rails and Javascript Entity models.

module DC

  # The normalized (ordered) list of entity types that sourceAFRICA supports.
  ENTITY_KINDS = [
    :person, :organization, :place, :term, :email, :phone, :city, :state, :country
  ]
  
  # The list of searchable document attributes.
  DOCUMENT_ATTRIBUTES = [
    :title, :description, :source, :account, :group
  ]
  
  # Other valid search prefixes.
  OTHER_SEARCHES = [
    :project, :projectid, :document, :access, :filter
  ]
  
  # All defined search prefixes.
  ALL_SEARCHES = DOCUMENT_ATTRIBUTES + OTHER_SEARCHES + ENTITY_KINDS

  # Supported entity kinds as strings for Rails validation.
  VALID_KINDS = ENTITY_KINDS.map(&:to_s)

  # Mapping from OpenCalais entity kinds into sourceAFRICA entity kinds.
  # OpenCalais types not on this list don't make the cut.
  CALAIS_MAP = {
    :company            => :organization,
    :organization       => :organization,
    :facility           => :place,
    :natural_feature    => :place,
    :city               => :city,
    :country            => :country,
    :industry_term      => :term,
    :person             => :person,
    :province_or_state  => :state,
    :email_address      => :email,
    :fax_number         => :phone,
    :phone_number       => :phone
  }

end