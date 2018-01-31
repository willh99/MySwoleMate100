<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MySwoleMate.Master" AutoEventWireup="true" CodeBehind="EditWorkout.aspx.cs" Inherits="MySwoleMate.EditWorkout" %>

<%--Page to Edit Workouts--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="first">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <h1>Edit Workout</h1>
                </div>
            </div>
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label ID="NameLabel" runat="server" Text="Workout Name"
                        AssociatedControlID="WorkoutName" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="WorkoutName" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="NameRequired" runat="server" ErrorMessage="Workout Name Required"
                                    ControlToValidate="WorkoutName" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Exercise1Label" runat="server" Text="Step 1"
                        AssociatedControlID="Exercise1" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise1" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Exercise1Required" runat="server" ErrorMessage="Step 1 Required"
                                    ControlToValidate="Exercise1" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Ex1SetsLabel" runat="server" Text="# of Sets"
                        AssociatedControlID="Exercise1Sets" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise1Sets" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Ex1SetRequired" runat="server" ErrorMessage="Step 1 Sets are Required"
                                    ControlToValidate="Exercise1Sets" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="Set1RangeValidator" runat="server" ControlToValidate="Exercise1Sets" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="999"
                                    ErrorMessage="Please enter a valid number to sets" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Ex1RepsLabel" runat="server" Text="# of Reps"
                        AssociatedControlID="Exercise1Reps" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise1Reps" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Ex1RepRequired" runat="server" ErrorMessage="Step 1 Reps are Required"
                                    ControlToValidate="Exercise1Reps" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="Ex1RepRangeValidator" runat="server" ControlToValidate="Exercise1Reps" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="999"
                                    ErrorMessage="Please enter a valid number to reps" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Exercise2Label" runat="server" Text="Step 2"
                        AssociatedControlID="Exercise2" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise2" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Exercise2Required" runat="server" ErrorMessage="Step 2 Required"
                                    ControlToValidate="Exercise2" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Ex2SetsLabel" runat="server" Text="# of Sets"
                        AssociatedControlID="Exercise2Sets" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise2Sets" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Ex2SetRequired" runat="server" ErrorMessage="Step 2 Sets are Required"
                                    ControlToValidate="Exercise2Sets" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="Ex2SetRangeValidator" runat="server" ControlToValidate="Exercise2Sets" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="999"
                                    ErrorMessage="Please enter a valid number to sets" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Ex2RepsLabel" runat="server" Text="# of Reps"
                        AssociatedControlID="Exercise2Reps" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise2Reps" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Ex2RepRequired" runat="server" ErrorMessage="Step 2 Reps are Required"
                                    ControlToValidate="Exercise2Reps" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="Ex2RepRangeValidator" runat="server" ControlToValidate="Exercise2Reps" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="999"
                                    ErrorMessage="Please enter a valid number to reps" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Exercise3Label" runat="server" Text="Step 3"
                        AssociatedControlID="Exercise3" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise3" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Exercise3Required" runat="server" ErrorMessage="Step 3 Required"
                                    ControlToValidate="Exercise3" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Ex3SetsLabel" runat="server" Text="# of Sets"
                        AssociatedControlID="Exercise3Sets" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise3Sets" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Ex3SetRequired" runat="server" ErrorMessage="Step 3 Sets are Required"
                                    ControlToValidate="Exercise3Sets" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="Ex3SetRangeValidator" runat="server" ControlToValidate="Exercise3Sets" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="999"
                                    ErrorMessage="Please enter a valid number to sets" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Ex3RepsLabel" runat="server" Text="# of Reps"
                        AssociatedControlID="Exercise3Reps" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise3Reps" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Ex3RepRequired" runat="server" ErrorMessage="Step 3 Reps are Required"
                                    ControlToValidate="Exercise3Reps" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="Ex3RepRangeValidator" runat="server" ControlToValidate="Exercise3Reps" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="999"
                                    ErrorMessage="Please enter a valid number to reps" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Exercise4Label" runat="server" Text="Step 2"
                        AssociatedControlID="Exercise4" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise4" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Exercise4Required" runat="server" ErrorMessage="Step 4 Required"
                                    ControlToValidate="Exercise4" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Ex4SetsLabel" runat="server" Text="# of Sets"
                        AssociatedControlID="Exercise4Sets" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise4Sets" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Ex4SetRequired" runat="server" ErrorMessage="Step 4 Sets are Required"
                                    ControlToValidate="Exercise4Sets" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="Ex4SetRangeValidator" runat="server" ControlToValidate="Exercise4Sets" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="999"
                                    ErrorMessage="Please enter a valid number to sets" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Ex4RepsLabel" runat="server" Text="# of Reps"
                        AssociatedControlID="Exercise4Reps" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise4Reps" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Ex4RepRequired" runat="server" ErrorMessage="Step 4 Reps are Required"
                                    ControlToValidate="Exercise4Reps" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="Ex4RepRangeValidator" runat="server" ControlToValidate="Exercise4Reps" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="999"
                                    ErrorMessage="Please enter a valid number to reps" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Exercise5Label" runat="server" Text="Step 5"
                        AssociatedControlID="Exercise5" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise5" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Exercise5Required" runat="server" ErrorMessage="Step 5 Required"
                                    ControlToValidate="Exercise5" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Ex5SetsLabel" runat="server" Text="# of Sets"
                        AssociatedControlID="Exercise5Sets" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise5Sets" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Ex5SetRequired" runat="server" ErrorMessage="Step 5 Sets are Required"
                                    ControlToValidate="Exercise5Sets" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="Ex5SetRangeValidator" runat="server" ControlToValidate="Exercise5Sets" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="999"
                                    ErrorMessage="Please enter a valid number to sets" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Ex5RepsLabel" runat="server" Text="# of Reps"
                        AssociatedControlID="Exercise5Reps" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise5Reps" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Ex5RepRequired" runat="server" ErrorMessage="Step 5 Reps are Required"
                                    ControlToValidate="Exercise5Reps" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="Ex5RepRangeValidator" runat="server" ControlToValidate="Exercise5Reps" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="999"
                                    ErrorMessage="Please enter a valid number to reps" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-4 col-xs-offset-4">
                        <asp:Button ID="WorkoutEditButton" runat="server" Text="Submit" CssClass="btn btn-success"
                            ValidationGroup="AllValidators" OnClick="WorkoutEditButton_Click" />
                        <a href="~/Workout.aspx" runat="server" class="btn btn-default">Back</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
