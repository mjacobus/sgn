require 'spec_helper'

describe Sgn::Webservice, "#get" do
  subject { described_class.new('customer_id', 'password')}

  it "calls ws with correct params and parse json" do
    response = stub(:response, body: '{"a":"b"}')

    Net::HTTP.should_receive(:get_response).with(
      'www.sgn.com.br',
      '/webservice/service.php?cliente=customer_id&limit=10&senha=password&sistema=sgn2'
    ).and_return(response)

    subject.get('service', { limit: 10 }).should eq({'a' => 'b'})
  end
end
