require 'gni/encoding'
require 'gni/harvester'
require 'gni/image'
require 'gni/name_words_generator'
require 'gni/net'
require 'gni/xml'
require 'gni/parser_result'
require 'taxamatch_rb'

module ActiveRecord #:nodoc:
  class Base
    def self.gni_sanitize_sql(ary)
      self.sanitize_sql_array(ary)
    end
  end
end

# A namesplace to keep project-specific data
module GNI
  def self.uuid(name_string)
    UUID.create_v5(name_string, GNA_NAMESPACE).guid
  end
end
