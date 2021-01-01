# == Schema Information
#
# Table name: messages
#
#  data                     :text
#  edit_version             :integer
#  forwarded                :integer
#  key_from_me              :integer
#  key_remote_jid           :text             not null
#  latitude                 :REAL
#  longitude                :REAL
#  media_caption            :text
#  media_duration           :integer
#  media_enc_hash           :text
#  media_hash               :text
#  media_mime_type          :text
#  media_name               :text
#  media_size               :integer
#  media_url                :text
#  media_wa_type            :text
#  mentioned_jids           :text
#  needs_push               :integer
#  origin                   :integer
#  participant_hash         :text
#  played_device_timestamp  :integer
#  preview_type             :integer
#  raw_data                 :binary
#  read_device_timestamp    :integer
#  receipt_device_timestamp :integer
#  receipt_server_timestamp :integer
#  received_timestamp       :integer
#  recipient_count          :integer
#  remote_resource          :text
#  send_count               :integer
#  send_timestamp           :integer
#  starred                  :integer
#  status                   :integer
#  thumb_image              :text
#  timestamp                :integer
#  _id                      :integer          primary key
#  key_id                   :text             not null
#  multicast_id             :text
#  payment_transaction_id   :text
#  quoted_row_id            :integer
#
# Indexes
#
#  media_hash_index       (media_hash)
#  media_type_index       (media_wa_type)
#  media_type_jid_index   (key_remote_jid,media_wa_type)
#  messages_jid_id_index  (key_remote_jid,_id)
#  messages_key_index     (key_remote_jid,key_from_me,key_id) UNIQUE
#  starred_index          (starred)
#
require 'rails_helper'

RSpec.describe Message, type: :model do
  describe '#kind' do
    subject { message.service_action }

    context 'with a service message' do
      let(:message) do
        create(
          :message,
          status: 'service',
          data: data,
          author: author,
          media_size: media_size,
          thumb_image: thumb_image,
          media_duration: media_duration
        )
      end
      let(:thumb_image) { nil }
      let(:data) { nil }
      let(:author) { nil }
      let(:media_size) { 0 }
      let(:media_duration) { 0 }

      context 'when data and remote resource are nil' do
        it { is_expected.to eq :default }
      end

      context 'when data and author are present' do
        let(:data) { 'Group name' }
        let(:author) { create(:jid) }

        it { is_expected.to eq :group_name_changed }
      end

      context 'when author and a phone number in the binary string are present' do
        let(:data) { Time.now.to_i }
        let(:author) { create(:jid) }
        let(:thumb_image) { '\xAC\xED\x00\x05sr\x00\x13java.util.ArrayListx\x81\xD2\x1D\x99\xC7a\x9D\x03\x00\x01I\x00\x04sizexp\x00\x00\x00\x01w\x04\x00\x00\x00\x01t\x00\x1C49123456789@s.whatsapp.netx' }

        context 'when media_duration == 1' do
          let(:media_duration) { 1 }

          it { is_expected.to eq :added_to_group }
        end

        context 'when media_duration == 0' do
          let(:media_duration) { 0 }

          context 'when media_size == 12' do
            let(:media_size) { 12 }

            it { is_expected.to eq :kicked_from_group }
          end

          context 'when media_size == 15' do
            let(:media_size) { 15 }

            it { is_expected.to eq :added_admin }
          end

          context 'when media_size == 6' do
            let(:media_size) { 6 }

            it { is_expected.to eq :changed_group_picture }
          end
        end
      end
    end
  end

  describe '#thumb_image_phone_number' do
    subject { message.thumb_image_phone_number }

    let(:message) { build_stubbed(:message, thumb_image: binary_string) }

    context 'with a binary blob including a phone number' do
      let(:binary_string) { '\xAC\xED\x00\x05sr\x00\x13java.util.ArrayListx\x81\xD2\x1D\x99\xC7a\x9D\x03\x00\x01I\x00\x04sizexp\x00\x00\x00\x01w\x04\x00\x00\x00\x01t\x00\x1C' + phone_number + "@s.whatsapp.netx" }
      let(:phone_number) { '4916721234567' }

      it { is_expected.to eq phone_number }
    end
  end
end
