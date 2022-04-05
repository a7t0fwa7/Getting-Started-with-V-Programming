pub struct Note {
pub:
	id int
pub mut:
	message string [required] // As we have marked the message field as [required], we must initialize the message field going forward. 
	status  bool
}

_ := Note{
	id: 1
	status: false
}
// throws error since we did not initialise the message field
