module Fog
  module Compute
    class Huaweicloud
      class Real
        # {Huaweicloud API Reference}[https://developer.huaweicloud.com/openapilist]
        def list_servers(options = {})
          _action = 'DescribeInstances'
          _sigNonce = randonStr
          _time = Time.new.utc

          _parameters = defalutParameters(_action, _sigNonce, _time)
          _pathURL = defaultAliyunUri(_action, _sigNonce, _time)

          _InstanceId = options[:instanceId]
          _VpcId = options[:vpcId]
          _SecurityGroupId = options[:securityGroupId]
          _PageNumber = options[:pageNumber]
          _PageSize = options[:pageSize]

          unless _InstanceId.nil?
            _InstanceStr = "[\"#{_InstanceId}\"]"
            _parameters['InstanceIds'] = _InstanceStr
            _pathURL += '&InstanceIds=' + _InstanceStr
          end

          unless _VpcId.nil?
            _parameters['VpcId'] = _VpcId
            _pathURL += '&VpcId=' + _VpcId
          end

          unless _SecurityGroupId.nil?
            _parameters['SecurityGroupId'] = _SecurityGroupId
            _pathURL += '&SecurityGroupId=' + _SecurityGroupId
          end

          unless _PageNumber.nil?
            _parameters['PageNumber'] = _PageNumber
            _pathURL += '&PageNumber=' + _PageNumber
          end

          _PageSize = '50' unless _PageSize
          _parameters['PageSize'] = _PageSize
          _pathURL += '&PageSize=' + _PageSize

          _signature = sign(@huaweicloud_accesskey_secret, _parameters)
          _pathURL += '&Signature=' + _signature

          request(
            expects: [200, 203],
            method: 'GET',
            path: _pathURL
          )
        end
      end

      class Mock
        def list_servers(_options = {})
          response = Excon::Response.new
          data = list_servers_detail.body['servers']
          servers = []
          for server in data
            servers << server.reject { |key, _value| !%w(id name links).include?(key) }
          end
          response.status = [200, 203][rand(1)]
          response.body = { 'servers' => servers }
          response
        end
      end
    end
  end
end
