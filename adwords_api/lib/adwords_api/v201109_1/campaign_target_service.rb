# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.0 on 2012-05-09 17:47:58.

require 'ads_common/savon_service'
require 'adwords_api/v201109_1/campaign_target_service_registry'

module AdwordsApi; module V201109_1; module CampaignTargetService
  class CampaignTargetService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201109_1'
      super(config, endpoint, namespace, :v201109_1)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    private

    def get_service_registry()
      return CampaignTargetServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201109_1::CampaignTargetService
    end
  end
end; end; end
