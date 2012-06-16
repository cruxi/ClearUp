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

describe ColumnsController do

  # This should return the minimal set of attributes required to create a valid
  # Column. As you add validations to Column, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ColumnsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all columns as @columns" do
      column = Column.create! valid_attributes
      get :index, {}, valid_session
      assigns(:columns).should eq([column])
    end
  end

  describe "GET show" do
    it "assigns the requested column as @column" do
      column = Column.create! valid_attributes
      get :show, {:id => column.to_param}, valid_session
      assigns(:column).should eq(column)
    end
  end

  describe "GET new" do
    it "assigns a new column as @column" do
      get :new, {}, valid_session
      assigns(:column).should be_a_new(Column)
    end
  end

  describe "GET edit" do
    it "assigns the requested column as @column" do
      column = Column.create! valid_attributes
      get :edit, {:id => column.to_param}, valid_session
      assigns(:column).should eq(column)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Column" do
        expect {
          post :create, {:column => valid_attributes}, valid_session
        }.to change(Column, :count).by(1)
      end

      it "assigns a newly created column as @column" do
        post :create, {:column => valid_attributes}, valid_session
        assigns(:column).should be_a(Column)
        assigns(:column).should be_persisted
      end

      it "redirects to the created column" do
        post :create, {:column => valid_attributes}, valid_session
        response.should redirect_to(Column.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved column as @column" do
        # Trigger the behavior that occurs when invalid params are submitted
        Column.any_instance.stub(:save).and_return(false)
        post :create, {:column => {}}, valid_session
        assigns(:column).should be_a_new(Column)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Column.any_instance.stub(:save).and_return(false)
        post :create, {:column => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested column" do
        column = Column.create! valid_attributes
        # Assuming there are no other columns in the database, this
        # specifies that the Column created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Column.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => column.to_param, :column => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested column as @column" do
        column = Column.create! valid_attributes
        put :update, {:id => column.to_param, :column => valid_attributes}, valid_session
        assigns(:column).should eq(column)
      end

      it "redirects to the column" do
        column = Column.create! valid_attributes
        put :update, {:id => column.to_param, :column => valid_attributes}, valid_session
        response.should redirect_to(column)
      end
    end

    describe "with invalid params" do
      it "assigns the column as @column" do
        column = Column.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Column.any_instance.stub(:save).and_return(false)
        put :update, {:id => column.to_param, :column => {}}, valid_session
        assigns(:column).should eq(column)
      end

      it "re-renders the 'edit' template" do
        column = Column.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Column.any_instance.stub(:save).and_return(false)
        put :update, {:id => column.to_param, :column => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested column" do
      column = Column.create! valid_attributes
      expect {
        delete :destroy, {:id => column.to_param}, valid_session
      }.to change(Column, :count).by(-1)
    end

    it "redirects to the columns list" do
      column = Column.create! valid_attributes
      delete :destroy, {:id => column.to_param}, valid_session
      response.should redirect_to(columns_url)
    end
  end

end
