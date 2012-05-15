# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.0 on 2012-05-09 17:48:01.

require 'adwords_api/errors'

module AdwordsApi; module V201109_1; module CustomerSyncService
  class CustomerSyncServiceRegistry
    CUSTOMERSYNCSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"CustomerSyncSelector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"CustomerChangeData", :min_occurs=>0, :max_occurs=>1}]}}}
    CUSTOMERSYNCSERVICE_TYPES = {:DateTimeRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapHeader=>{:fields=>[{:name=>:auth_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :AdGroupChangeData=>{:fields=>[{:name=>:ad_group_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_group_change_status, :type=>"ChangeStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:changed_ads, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:changed_criteria, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:deleted_criteria, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :CampaignChangeData=>{:fields=>[{:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_change_status, :type=>"ChangeStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:changed_ad_groups, :type=>"AdGroupChangeData", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:added_campaign_criteria, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:deleted_campaign_criteria, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:added_ad_extensions, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:deleted_ad_extensions, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:campaign_targeting_changed, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :CustomerChangeData=>{:fields=>[{:name=>:changed_campaigns, :type=>"CampaignChangeData", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:last_change_timestamp, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :CustomerSyncSelector=>{:fields=>[{:name=>:date_time_range, :type=>"DateTimeRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ChangeStatus=>{:fields=>[]}}
    CUSTOMERSYNCSERVICE_NAMESPACES = ["https://adwords.google.com/api/adwords/cm/v201109_1"]

    def self.get_method_signature(method_name)
      return CUSTOMERSYNCSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CUSTOMERSYNCSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CUSTOMERSYNCSERVICE_NAMESPACES[index]
    end
  end

  # Indicates that this instance is a subtype of ApplicationException.
  # Although this field is returned in the response, it is ignored on input
  # and cannot be selected. Specify xsi:type instead.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end
