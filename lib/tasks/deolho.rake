namespace :deolho do
  desc "Deliver the weekly newsletter"
  task :weekly_newsletter => :environment do
    if Time.now.in_time_zone.monday?
      posts = Post.where("created_at >= ?", Date.today - 7.days)
      if posts.any?
        Subscriber.all.each do |subscriber|
          Notifier.newsletter(subscriber.email, posts).deliver
        end
      end
    end
  end
end
