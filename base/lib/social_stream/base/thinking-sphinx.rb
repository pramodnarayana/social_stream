module SocialStream
  module Base
    module ThinkingSphinx
      module Index
        module Builder
          def activity_object_index
            indexes activity_object.title,       :as => :title
            indexes activity_object.description, :as => :description
            indexes activity_object.tags.name,   :as => :tags

            has created_at
            has activity_object.author_action(:actor_id), :as => :author_id
          end
        end
      end
    end
  end
end