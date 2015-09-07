module ApplicationHelper
	def avatar_url(staffer)
		gravatar_id = Digest::MD5.hexdigest(staffer.email.downcase)
		"http://gravatar.com/avatar/#{gravatar_id}.png?s=80%d"
	end
end
