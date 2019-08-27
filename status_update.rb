class StatusUpdate
	attr_reader :body, :comments

	def initialize(body)
		@body = body
		@comments = {}
	end

	def display
		puts "-" * 50
		puts "Here is your status!"
		puts "Body: #{body}"
		comments.each do |id, text|
			puts "#{id}: #{text}"
		end
		puts "-" * 50
	end

	def add_comment(comment)
		comments[next_comment_id] = comment
		puts "Added '#{comment}' for a total of #{total_comments} comments."
	end

	def remove_comment(id)
		comments.delete(id)
		puts "Deleted comment with ID #{id}. Comment count now at #{total_comments}"
	end

	def next_comment_id
		total_comments + 1
	end

	def total_comments
		comments.count
	end
end
