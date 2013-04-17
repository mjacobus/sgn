require 'spec_helper'

describe Sgn::Webservice, "#get" do
  subject { described_class.new('customer_id', 'password')}
  let(:params)       { { limit: 10 } }
  let(:expected_uri) { '/webservice/service.php?cliente=customer_id&limit=10&senha=password&sistema=sgn2' }

  it "calls ws with correct params and parse json" do
    response = stub(:response, body: '{"a":"b"}')

    Net::HTTP.should_receive(:get_response)
      .with('www.sgn.com.br', expected_uri).and_return(response)

    subject.get('service', params).should eq({'a' => 'b'})
  end

  it "raises error when response.erro == true" do
    response = stub(:response, body: '{"erro":true,"msg":"An error occurred"}')

    Net::HTTP.should_receive(:get_response)
      .with('www.sgn.com.br', expected_uri).and_return(response)

    expect { subject.get('service', params) }.to raise_error(Sgn::Error, "An error occurred")
  end
end
