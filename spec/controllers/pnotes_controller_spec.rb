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

describe PnotesController do

  # This should return the minimal set of attributes required to create a valid
  # Pnote. As you add validations to Pnote, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "para1" => "MyText" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PnotesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all pnotes as @pnotes" do
      pnote = Pnote.create! valid_attributes
      get :index, {}, valid_session
      assigns(:pnotes).should eq([pnote])
    end
  end

  describe "GET show" do
    it "assigns the requested pnote as @pnote" do
      pnote = Pnote.create! valid_attributes
      get :show, {:id => pnote.to_param}, valid_session
      assigns(:pnote).should eq(pnote)
    end
  end

  describe "GET new" do
    it "assigns a new pnote as @pnote" do
      get :new, {}, valid_session
      assigns(:pnote).should be_a_new(Pnote)
    end
  end

  describe "GET edit" do
    it "assigns the requested pnote as @pnote" do
      pnote = Pnote.create! valid_attributes
      get :edit, {:id => pnote.to_param}, valid_session
      assigns(:pnote).should eq(pnote)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Pnote" do
        expect {
          post :create, {:pnote => valid_attributes}, valid_session
        }.to change(Pnote, :count).by(1)
      end

      it "assigns a newly created pnote as @pnote" do
        post :create, {:pnote => valid_attributes}, valid_session
        assigns(:pnote).should be_a(Pnote)
        assigns(:pnote).should be_persisted
      end

      it "redirects to the created pnote" do
        post :create, {:pnote => valid_attributes}, valid_session
        response.should redirect_to(Pnote.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved pnote as @pnote" do
        # Trigger the behavior that occurs when invalid params are submitted
        Pnote.any_instance.stub(:save).and_return(false)
        post :create, {:pnote => { "para1" => "invalid value" }}, valid_session
        assigns(:pnote).should be_a_new(Pnote)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Pnote.any_instance.stub(:save).and_return(false)
        post :create, {:pnote => { "para1" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested pnote" do
        pnote = Pnote.create! valid_attributes
        # Assuming there are no other pnotes in the database, this
        # specifies that the Pnote created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Pnote.any_instance.should_receive(:update).with({ "para1" => "MyText" })
        put :update, {:id => pnote.to_param, :pnote => { "para1" => "MyText" }}, valid_session
      end

      it "assigns the requested pnote as @pnote" do
        pnote = Pnote.create! valid_attributes
        put :update, {:id => pnote.to_param, :pnote => valid_attributes}, valid_session
        assigns(:pnote).should eq(pnote)
      end

      it "redirects to the pnote" do
        pnote = Pnote.create! valid_attributes
        put :update, {:id => pnote.to_param, :pnote => valid_attributes}, valid_session
        response.should redirect_to(pnote)
      end
    end

    describe "with invalid params" do
      it "assigns the pnote as @pnote" do
        pnote = Pnote.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Pnote.any_instance.stub(:save).and_return(false)
        put :update, {:id => pnote.to_param, :pnote => { "para1" => "invalid value" }}, valid_session
        assigns(:pnote).should eq(pnote)
      end

      it "re-renders the 'edit' template" do
        pnote = Pnote.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Pnote.any_instance.stub(:save).and_return(false)
        put :update, {:id => pnote.to_param, :pnote => { "para1" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested pnote" do
      pnote = Pnote.create! valid_attributes
      expect {
        delete :destroy, {:id => pnote.to_param}, valid_session
      }.to change(Pnote, :count).by(-1)
    end

    it "redirects to the pnotes list" do
      pnote = Pnote.create! valid_attributes
      delete :destroy, {:id => pnote.to_param}, valid_session
      response.should redirect_to(pnotes_url)
    end
  end

end
