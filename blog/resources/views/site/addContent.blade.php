<form action="{{ route('form.upload') }}" method="post" enctype="multipart/form-data" >
    {{ csrf_field() }}
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputEmail4">Title</label>
            <input required type="text" name="Title" class="form-control" id="inputEmail4" placeholder="Title">
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Author</label>
            <input required type="text" name="Author" class="form-control" id="inputPassword4" placeholder="Author">
        </div>
    </div>
    <div class="form-group col-md-6">
        <label for="inputAddress">Pages</label>
        <input required type="number" name="Pages" class="form-control" id="inputAddress" placeholder="123">
    <div class="form-group col-md-6">
        <label for="inputAddress2">Description</label>
        <textarea required type="text" name="Description" id="inputAddress2" class="md-textarea form-control" rows="3"></textarea>
    </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCity">Image</label>
            <input required type="file" name="image" class="">
        </div>
        {{ csrf_field() }}
    <button type="submit" class="btn btn-primary col-md-12">Add book</button>
</form>