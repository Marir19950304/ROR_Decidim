# frozen_string_literal: true

module Decidim
  module ParticipatoryProcesses
    # This cell renders the Small (:s) process group card
    # for an given instance of a ParticipatoryProcessGroup
    class ProcessGroupSCell < Decidim::CardMCell
      private

      def has_image?
        model.hero_image.attached?
      end

      def resource_path
        Decidim::ParticipatoryProcesses::Engine.routes.url_helpers.participatory_process_group_path(model)
      end

      def resource_image_path
        model.attached_uploader(:hero_image).path
      end
    end
  end
end
