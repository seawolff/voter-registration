## National Voter Registration Form
The National Voter Registration Form is located at [http://www.eac.gov/voter_resources/register_to_vote.aspx](http://www.eac.gov/voter_resources/register_to_vote.aspx)

## Updating the PDF Form
If the PDF form changes the file is currently located at `public/nvra-en.pdf`
This form is slimmed down to use just the form the instructions have been removed

[Prawn](https://github.com/prawnpdf/prawn) is being used to generate the information on the PDF form.
If the fields generated need to be changed modify the file `app/pdfs/registration_pdf.rb`
