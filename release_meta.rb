require 'json'
require 'open-uri'

class Release
	def self.tag
		@@release ||= JSON.load(open('https://api.github.com/repos/pjk/libcbor/releases')).last
		@@release['tag_name']
	end
end
