# header_tagger_storer

* Uses rails -v 5.0.2
* Uses postgresql 9.4.1

To set up:
  - `gem install bundler`
  - `bundle install`
  - `bundle exec rails db:create`
  - `bundle exec rails db:migrate`

To use:
  There are two routes:
   - `POST localhost:3000/url_addresses/parse` with an expected payload of
    
      ```json
      {
	        "url_address": {
		        "url": "http://www.exampleurl.com"
	        }
      }
      ```

   - `GET localhost:3000/url_addresses` will return a list of already parsed content
