module PodcastIndex
  module Api
    class Search
      extend Request

      class << self
        def by_term(term:, val: nil, aponly: nil, clean: nil, fulltext: nil)
          response = get("/search/byterm", q: term, val: val, aponly: aponly, clean: clean, fulltext: fulltext)
          JSON.parse(response.body)
        end

        def by_title(title:, val: nil, clean: nil, fulltext: nil, similar: nil)
          response = get("/search/bytitle", q: title, val: val, clean: clean, fulltext: fulltext, similar: similar)
          JSON.parse(response.body)
        end

        def by_person(person:, fulltext: nil)
          response = get("/search/byperson", q: person, fulltext: fulltext)
          JSON.parse(response.body)
        end

        def music_by_term(term:, val: nil, aponly: nil, clean: nil, fulltext: nil)
          response = get("/search/music/byterm", q: term, val: val, aponly: aponly, clean: clean, fulltext: fulltext)
          JSON.parse(response.body)
        end
      end
    end
  end
end
