<?php
    $data['title'] = "Add User";
    $this->load->view('tpl/header', $data); 
?>                 
                <!-- content @s -->
                <div class="nk-content nk-content-fluid">
                    <div class="container-xl wide-lg">
                        <div class="nk-content-body">
                            <div class="kyc-app wide-sm m-auto">
                                <div class="nk-block-head nk-block-head-lg wide-xs mx-auto">
                                    <div class="nk-block-head-content text-center">
                                        <h2 class="nk-block-title fw-normal">Add User</h2>
                                        <div class="nk-block-des">
                                            <p>To comply with regulation each participant will have to go through indentity verification (KYC/AML) to prevent fraud causes. </p>
                                        </div>
                                    </div>
                                </div><!-- nk-block-head -->
                                <div class="nk-block">
                                    <div class="card card-bordered">
                                        <div class="nk-kycfm">
                                            <form action="<?php echo base_url(); ?>users/addUser" method="POST">
                                                <div class="nk-kycfm-head">
                                                    <div class="nk-kycfm-count">01</div>
                                                    <div class="nk-kycfm-title">
                                                        <h5 class="title">Personal Details</h5>
                                                        <p class="sub-title">Your simple personal information required for identification</p>
                                                    </div>
                                                </div><!-- .nk-kycfm-head -->
                                                <div class="nk-kycfm-content">
                                                    <div class="nk-kycfm-note">
                                                        <em class="icon ni ni-info-fill" data-toggle="tooltip" data-placement="right" title="Tooltip on right"></em>
                                                        <p>Please type carefully and fill out the form with your personal details. Your can’t edit these details once you submitted the form.</p>
                                                    </div>
                                                    <div class="row g-4">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="form-label-group">
                                                                    <label class="form-label">First Name <span class="text-danger">*</span></label>
                                                                </div>
                                                                <div class="form-control-group">
                                                                    <input type="text" class="form-control form-control-lg" name="firstname">
                                                                </div>
                                                            </div>
                                                        </div><!-- .col -->
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="form-label-group">
                                                                    <label class="form-label">Last Name <span class="text-danger">*</span></label>
                                                                </div>
                                                                <div class="form-control-group">
                                                                    <input type="text" class="form-control form-control-lg" name="lastname">
                                                                </div>
                                                            </div>
                                                        </div><!-- .col -->
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="form-label-group">
                                                                    <label class="form-label">Email Address <span class="text-danger">*</span></label>
                                                                </div>
                                                                <div class="form-control-group">
                                                                    <input type="text" class="form-control form-control-lg" name="email">
                                                                </div>
                                                            </div>
                                                        </div><!-- .col -->
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="form-label-group">
                                                                    <label class="form-label">Phone Number <span class="text-danger">*</span></label>
                                                                </div>
                                                                <div class="form-control-group">
                                                                    <input type="text" class="form-control form-control-lg" name="phone">
                                                                </div>
                                                            </div>
                                                        </div><!-- .col -->
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="form-label-group">
                                                                    <label class="form-label">Gender <span class="text-danger">*</span></label>
                                                                </div>
                                                                <div class="form-control-group">
                                                                    <input type="text" class="form-control form-control-lg"  name="gender">
                                                                </div>
                                                            </div>
                                                        </div><!-- .col -->
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="form-label-group">
                                                                    <label class="form-label">WhatsApp Number <span class="text-danger">*</span></label>
                                                                </div>
                                                                <div class="form-control-group">
                                                                    <input type="text" class="form-control form-control-lg">
                                                                </div>
                                                            </div>
                                                        </div><!-- .col -->
                                                    </div><!-- .row -->
                                                </div><!-- .nk-kycfm-content -->
                                                <div class="nk-kycfm-head">
                                                    <div class="nk-kycfm-count">02</div>
                                                    <div class="nk-kycfm-title">
                                                        <h5 class="title">Your Role</h5>
                                                        <p class="sub-title">Information about your role</p>
                                                    </div>
                                                </div><!-- .nk-kycfm-head -->
                                                <div class="nk-kycfm-content">
                                                    <div class="nk-kycfm-note">
                                                        <em class="icon ni ni-info-fill" data-toggle="tooltip" data-placement="right" title="Tooltip on right"></em>
                                                        <p>Your can’t edit these details after you submit the form.</p>
                                                    </div>
                                                    <div class="row g-4">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="form-label-group">
                                                                    <label class="form-label">Unit <span class="text-danger">*</span></label>
                                                                </div>
                                                                <div class="form-control-group">
                                                                    <input type="text" class="form-control form-control-lg" name="unit">
                                                                </div>
                                                            </div>
                                                        </div><!-- .col -->
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="form-label-group">
                                                                    <label class="form-label">Department</label>
                                                                </div>
                                                                <div class="form-control-group">
                                                                    <input type="text" class="form-control form-control-lg" name="department">
                                                                </div>
                                                            </div>
                                                        </div><!-- .col -->
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="form-label-group">
                                                                    <label class="form-label">Title <span class="text-danger">*</span></label>
                                                                </div>
                                                                <div class="form-control-group">
                                                                    <input type="text" class="form-control form-control-lg" name="title">
                                                                </div>
                                                            </div>
                                                        </div><!-- .col -->
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="form-label-group">
                                                                    <label class="form-label">Rank <span class="text-danger">*</span></label>
                                                                </div>
                                                                <div class="form-control-group">
                                                                    <input type="text" class="form-control form-control-lg" name="rank">
                                                                </div>
                                                            </div>
                                                        </div><!-- .col -->
                                                    </div><!-- .row -->
                                                </div><!-- .nk-kycfm-content -->
                                                <div class="nk-kycfm-footer">
                                                    <div class="form-group">
                                                        <div class="custom-control custom-control-xs custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="tc-agree">
                                                            <label class="custom-control-label" for="tc-agree">I Have Read The <a href="#">Terms Of Condition</a> And <a href="#">Privacy Policy</a></label>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="custom-control custom-control-xs custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="info-assure">
                                                            <label class="custom-control-label" for="info-assure">All The Personal Information I Have Entered Is Correct.</label>
                                                        </div>
                                                    </div>
                                                    <div class="nk-kycfm-action pt-2">
                                                        <button type="submit" class="btn btn-lg btn-primary">Process for Verify</button>
                                                    </div>
                                                </div><!-- .nk-kycfm-footer -->
                                            </form>
                                        </div><!-- .nk-kycfm -->
                                    </div><!-- .card -->
                                </div><!-- nk-block -->
                            </div><!-- kyc-app -->
                        </div>
                    </div>
                </div>
                <!-- content @e -->
                <?php $this->load->view('tpl/footer'); ?>