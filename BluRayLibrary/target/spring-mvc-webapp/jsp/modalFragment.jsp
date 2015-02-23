<!-- ADD NEW MODAL -->
<div class="modal fade" id="add-dialog" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="detailsModalLabel">Add Blu-Ray</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" role="form">
					<div class="form-group">
						<label for="add-title" class="col-md-4 control-label">Title:</label>
						<div class="col-md-8">
							<input type="text" class="form-control" id="add-title" placeholder="Title">
						</div>
					</div>
					<div class="form-group">
						<label for="add-release-date" class="col-md-4 control-label">Release Date:</label>
						<div class="col-md-8">
							<input type="text" class="form-control" id="add-release-date" placeholder="Release Date">
						</div>
					</div>
					<div class="form-group">
						<label for="add-mpaa-rating" class="col-md-4 control-label">MPAA Rating:</label>
						<div class="col-md-8">
							<input type="text" class="form-control" id="add-mpaa-rating" placeholder="Rating">
						</div>
					</div>
					<div class="form-group">
						<label for="add-director" class="col-md-4 control-label">Director:</label>
						<div class="col-md-8">
							<input type="text" class="form-control" id="add-director" placeholder="Director">
						</div>
					</div>
					<div class="form-group">
						<label for="add-studio" class="col-md-4 control-label">Studio:</label>
						<div class="col-md-8">
							<input type="text" class="form-control" id="add-studio" placeholder="Studio">
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-offset-4 col-md-8">
							<button type="submit" id="add-button" class="btn btn-default" data-dismiss="modal">
								Add
							</button>
							<button type="button" id="cancel-button" class="btn btn-default" data-dismiss="modal">
								Cancel
							</button> 
							<input type="hidden" id="edit-contact-id">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- EDIT MODAL -->
<div class="modal fade" id="edit-dialog" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="edit-modal-label">Edit Blu-Ray</h4>
            </div>
            <div class="modal-body">
                <h3 id="bluray-id"></h3>
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="edit-title" class="col-md-4 control-label">
                            Title:
                        </label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="edit-title" placeholder="Title">
                        </div>
                    </div>
					<div class="form-group">
                        <label for="edit-release-date" class="col-md-4 control-label">
                            Release Date:
                        </label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="edit-release-date" placeholder="Release Date">
                        </div>
                    </div>
					<div class="form-group">
                        <label for="edit-mpaa-rating" class="col-md-4 control-label">
                            MPAA Rating:
                        </label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="edit-mpaa-rating" placeholder="MPAA Rating">
                        </div>
                    </div>
					<div class="form-group">
                        <label for="edit-director" class="col-md-4 control-label">
                            Director:
                        </label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="edit-director" placeholder="Director">
                        </div>
                    </div>
					<div class="form-group">
                        <label for="edit-studio" class="col-md-4 control-label">
                            Studio:
                        </label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="edit-studio" placeholder="studio">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-4 col-md-8">
                            <button type="submit" id="edit-button" class="btn btn-default" data-dismiss="modal">
                                Update
                            </button>
                            <button type="button" id="cancel-button" class="btn btn-default" data-dismiss="modal">
                                Cancel
                            </button> 
                        </div> <!--This will slide it over 4 grid spaces and take up the rest-->
                    </div>
					<input type="hidden" id="edit-id">
                </form>
            </div>
        </div>
    </div>
</div>
