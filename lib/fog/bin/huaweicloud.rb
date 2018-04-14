class Huaweicloud < Fog::Bin
  class << self
    def class_for(key)
      case key
      when :compute
        Fog::Compute::Huaweicloud
      else
        raise ArgumentError, "Unrecognized service: #{key}"
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
                    when :storage
                      Fog::Logger.warning('Huaweicloud[:storage] is not recommended, use Storage[:openstack] for portability')
                    else
                      raise ArgumentError, "Unrecognized service: #{key.inspect}"
        end
      end
      @@connections[service]
    end

    def services
      Fog::Aliyun.services
    end
  end
end
