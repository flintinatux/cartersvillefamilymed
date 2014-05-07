require 'new_relic/rack/agent_hooks'
require 'new_relic/rack/browser_monitoring'
require 'new_relic/rack/error_collector'
require 'rack/jekyll'

use NewRelic::Rack::AgentHooks
use NewRelic::Rack::BrowserMonitoring
use NewRelic::Rack::ErrorCollector
run Rack::Jekyll.new
