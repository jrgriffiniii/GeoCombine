require 'spec_helper'

#TODO Provide additional expectations on html structure
describe 'FGDC to html' do
  include XmlDocs
  let(:page) { GeoCombine::Fgdc.new(tufts_fgdc).to_html }
  describe 'Identification Information' do
    it 'has sections' do
      expect(page).to have_tag '#fgdc-identification-info' do
        with_tag 'dt', text: /Citation/
        with_tag 'dt', text: /Title/
        with_tag 'dd', text: /Drilling Towers 50k Scale Ecuador 2011/
        with_tag 'dt', text: /Abstract/
      end
    end
  end
  describe 'Data Quality Information' do
    it 'has sections' do
      expect(page).to have_tag '#fgdc-data-quality-info'
    end
  end
  describe 'Spatial Data Organization Information' do
    it 'has sections' do
      expect(page).to have_tag '#fgdc-spatialdataorganization-info'
    end
  end
  describe 'Entity and Attribute Information' do
    it 'has sections' do
      expect(page).to have_tag '#fgdc-spatialreference-info'
    end
  end
  describe 'Distribution Information' do
    it 'has sections' do
      expect(page).to have_tag '#fgdc-distribution-info'
    end
  end
  describe 'Metadata Reference Information' do
    it 'has sections' do
      expect(page).to have_tag '#fgdc-metadata-reference-info'
    end
  end
end
