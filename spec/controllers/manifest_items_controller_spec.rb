require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ManifestItemsController do

  # This should return the minimal set of attributes required to create a valid
  # ManifestItem. As you add validations to ManifestItem, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ManifestItemsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all manifest_items as @manifest_items" do
      manifest_item = ManifestItem.create! valid_attributes
      get :index, {}, valid_session
      assigns(:manifest_items).should eq([manifest_item])
    end
  end

  describe "GET show" do
    it "assigns the requested manifest_item as @manifest_item" do
      manifest_item = ManifestItem.create! valid_attributes
      get :show, {:id => manifest_item.to_param}, valid_session
      assigns(:manifest_item).should eq(manifest_item)
    end
  end

  describe "GET new" do
    it "assigns a new manifest_item as @manifest_item" do
      get :new, {}, valid_session
      assigns(:manifest_item).should be_a_new(ManifestItem)
    end
  end

  describe "GET edit" do
    it "assigns the requested manifest_item as @manifest_item" do
      manifest_item = ManifestItem.create! valid_attributes
      get :edit, {:id => manifest_item.to_param}, valid_session
      assigns(:manifest_item).should eq(manifest_item)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ManifestItem" do
        expect {
          post :create, {:manifest_item => valid_attributes}, valid_session
        }.to change(ManifestItem, :count).by(1)
      end

      it "assigns a newly created manifest_item as @manifest_item" do
        post :create, {:manifest_item => valid_attributes}, valid_session
        assigns(:manifest_item).should be_a(ManifestItem)
        assigns(:manifest_item).should be_persisted
      end

      it "redirects to the created manifest_item" do
        post :create, {:manifest_item => valid_attributes}, valid_session
        response.should redirect_to(ManifestItem.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved manifest_item as @manifest_item" do
        # Trigger the behavior that occurs when invalid params are submitted
        ManifestItem.any_instance.stub(:save).and_return(false)
        post :create, {:manifest_item => {}}, valid_session
        assigns(:manifest_item).should be_a_new(ManifestItem)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ManifestItem.any_instance.stub(:save).and_return(false)
        post :create, {:manifest_item => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested manifest_item" do
        manifest_item = ManifestItem.create! valid_attributes
        # Assuming there are no other manifest_items in the database, this
        # specifies that the ManifestItem created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ManifestItem.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => manifest_item.to_param, :manifest_item => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested manifest_item as @manifest_item" do
        manifest_item = ManifestItem.create! valid_attributes
        put :update, {:id => manifest_item.to_param, :manifest_item => valid_attributes}, valid_session
        assigns(:manifest_item).should eq(manifest_item)
      end

      it "redirects to the manifest_item" do
        manifest_item = ManifestItem.create! valid_attributes
        put :update, {:id => manifest_item.to_param, :manifest_item => valid_attributes}, valid_session
        response.should redirect_to(manifest_item)
      end
    end

    describe "with invalid params" do
      it "assigns the manifest_item as @manifest_item" do
        manifest_item = ManifestItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ManifestItem.any_instance.stub(:save).and_return(false)
        put :update, {:id => manifest_item.to_param, :manifest_item => {}}, valid_session
        assigns(:manifest_item).should eq(manifest_item)
      end

      it "re-renders the 'edit' template" do
        manifest_item = ManifestItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ManifestItem.any_instance.stub(:save).and_return(false)
        put :update, {:id => manifest_item.to_param, :manifest_item => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested manifest_item" do
      manifest_item = ManifestItem.create! valid_attributes
      expect {
        delete :destroy, {:id => manifest_item.to_param}, valid_session
      }.to change(ManifestItem, :count).by(-1)
    end

    it "redirects to the manifest_items list" do
      manifest_item = ManifestItem.create! valid_attributes
      delete :destroy, {:id => manifest_item.to_param}, valid_session
      response.should redirect_to(manifest_items_url)
    end
  end

end
