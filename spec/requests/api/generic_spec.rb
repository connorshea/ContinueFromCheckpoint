# typed: false
require 'rails_helper'

RSpec.describe "API", type: :request do
  describe "Query for data on game_purchase" do
    let(:user) { create(:confirmed_user) }
    let(:application) { build(:application, owner: user) }
    let(:access_token) { create(:access_token, resource_owner_id: user.id, application: application) }
    let(:games) { create_list(:game, 31) }

    it "returns correct hasNextPage with 31 records" do
      games
      query_string = <<-GRAPHQL
        query {
          games {
            nodes {
              id
              name
            }
            pageInfo {
              hasNextPage
              pageSize
            }
          }
        }
      GRAPHQL

      result = api_request(query_string, token: access_token)

      expect(result.graphql_dig(:games, :page_info, :has_next_page)).to eq(true)
      expect(result.graphql_dig(:games, :page_info, :page_size)).to eq(30)
    end

    it "returns correct totalCount with 31 records" do
      games
      query_string = <<-GRAPHQL
        query {
          games {
            nodes {
              id
              name
            }
            totalCount
          }
        }
      GRAPHQL

      result = api_request(query_string, token: access_token)

      expect(result.graphql_dig(:games, :total_count)).to eq(31)
    end
  end
end
