ActiveAdmin.register Tax do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :name, province_taxes_attributes: [:id, :province_id, :tax_id, :rate, :destroy]

  index do
    selectable_column
    column :id
    column :name
    column :taxes do |tax|
      tax.provinces.map { |bg|bg.name}.join(", ").html_safe
    end
    column :province_taxes do |tax|
      tax.province_taxes.map { |bg|bg.rate}.join(", ").html_safe
    end
    actions
  end

  show do |tax|
    attributes_table do
      row :name
      row :provinces do |tax|
        tax.provinces.map { |bg|bg.name}.join(", ").html_safe
      end
      row :province_taxes do |tax|
        tax.province_taxes.map { |bg|bg.rate}.join(", ").html_safe
      end
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Province" do
      f.input :name
      f.has_many :province_taxes, allow_destroy: true do |n_f|
        n_f.input :province
        n_f.input :rate
      end
    end

    f.actions
  end
end
