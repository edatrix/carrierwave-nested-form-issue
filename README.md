# carrierwave-nested-form-issue

reproduction of bug using carrierwave, simple_form, and cocoon in which attachments in nested forms are not removed without changing another field in that form.

related to https://github.com/carrierwaveuploader/carrierwave/issues/1673
and https://github.com/carrierwaveuploader/carrierwave/issues/1801

### to recreate the issue

- fork or clone this repo and `rails s` to start your server; access the app at `http://localhost:3000/elves`
- hit the `new elf` link to create a new elf and associated toy
- fill out all fields on form including name, toy name, and toy image
- hit the 'create elf' button and be redirected back to index
- select the same elf from the index list and edit
- check the `remove image` box and save

here is where the error occurs.  without updating another attribute (toy name in this case), the image will not be removed.