require 'fog/core'
require 'fog/json'
require 'fog/huaweicloud/version'

module Fog
  module Compute
    ret = autoload :Huaweicloud, 'fog/huaweicloud/compute'
  end

  module Huaweicloud
    extend Fog::Provider
    service(:compute, 'Compute')
  end
end
