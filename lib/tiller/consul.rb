require 'diplomat'
require 'pp'
require 'tiller/defaults'
require 'tiller/util'

module Tiller::ConsulCommon


  def setup
    self.deprecated
    # Set our defaults if not specified
    @consul_config = Tiller::Consul.defaults
    unless Tiller::config.has_key?('consul')
      Tiller::log.info('No Consul configuration block for this environment')
      return
    end
    @consul_config.deep_merge!(Tiller::config['consul'])

    # Sanity check
    ['url'].each {|c| raise "Consul: Missing Consul configuration #{c}" unless @consul_config.has_key?(c)}

    # Now we connect to Consul
    Diplomat.configure do |config|
      Tiller::log.debug("#{self} : Connecting to Consul at #{@consul_config['url']}")
      config.url = @consul_config['url']

      if @consul_config['acl_token']
        Tiller::log.debug("#{self} : Using Consul ACL token")
        config.acl_token = @consul_config['acl_token']
      end
    end
  end

  # Interpolate configuration placeholders with values
  def interpolate(path, template_name = nil)
    path.gsub!('%e', Tiller::config[:environment])
    path.gsub!('%t', template_name) if template_name
    path
  end

end