if Rails.env.development? || Rails.env.test?
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins(/localhost\:\d+/)

      resource '*',
               credentials: true,
               headers: :any,
               methods: %i[get post put patch delete options head]
    end
  end
end
