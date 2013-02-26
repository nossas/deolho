namespace :deolho do
  desc "Deliver the weekly newsletter"
  task :weekly_newsletter => :environment do
    if Time.now.monday?
      posts = Post.where("created_at >= ?", Date.today - 7.days)
      if posts.any?
        Subscriber.all.each do |subscriber|
          Notifier.newsletter(subscriber.email, posts).deliver
        end
      end
    end
  end

  task :newsletter => :environment do
    posts = Post.where("created_at >= ?", Date.today - 7.days)
    if posts.any?
      Subscriber.all.each do |subscriber|
        Notifier.newsletter(subscriber.email, posts).deliver
      end
    end
  end
end
