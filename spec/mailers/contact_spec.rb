require "rails_helper"

RSpec.describe ContactMailer, type: :mailer do
  describe "sended" do
    let(:mail) { ContactMailer.sended }

    it "renders the headers" do
      expect(mail.subject).to eq("Sended")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "rreceived" do
    let(:mail) { ContactMailer.rreceived }

    it "renders the headers" do
      expect(mail.subject).to eq("Rreceived")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
