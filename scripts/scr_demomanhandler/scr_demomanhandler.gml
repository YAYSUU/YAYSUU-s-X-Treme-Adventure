// ERROR STUFF
#macro ERR_NO_ERROR 0xff // no error occurred
#macro ERR_DEMO_NOT_OPEN 0x01 // demo file has not been opened yet
#macro ERR_DEMO_ALREADY_OPEN 0x02 // attempted to open another demo file when one is already open. make sure you close your demos!
#macro ERR_ALREADY_INITIALISED 0x03 // unused
#macro ERR_ALLOC_FAIL 0x04 // failed to allocate necessary data (only used in demoman_init)
#macro ERR_DEMO_OPEN_FAIL 0x05 // failed to open demo file
#macro ERR_ILLEGAL_MAGIC 0x06 // magic string at the beginning of the file doesn't match what we were expecting
#macro ERR_PARSE_FAIL 0x07 // failed to read or parse a certain part of the demo file
#macro ERR_INVALID_VERSION 0x08 // demo file is not compatible (different versions)
#macro ERR_READ_ONLY 0x09 // attempt to write to a demo file that is open for reading
#macro ERR_WRITE_ONLY 0x0a // attempt to read events from a demo file that is open for writing
#macro ERR_WRITE_FAIL 0x0b // could not write header/event data to the demo file
#macro ERR_NO_FLUSHABLE_EVENTS 0x0c // no events are in the buffer to flush
#macro ERR_DEMO_CLOSE_FAIL 0x0d // could not close the demo file
#macro ERR_FLUSH_FAIL 0x0e // unused
#macro ERR_NO_NEXT_EVENT 0x0f // reached the end of the demo file

function getdemomanerrorstring(err) {
	switch (err) {
		case ERR_NO_ERROR: return "no error"
		case ERR_DEMO_NOT_OPEN: return "demo not opened yet"
		case ERR_DEMO_ALREADY_OPEN: return "demo already opened"
		case ERR_ALREADY_INITIALISED: return "ERR_ALREADY_INITIALISED"
		case ERR_ALLOC_FAIL: return "allocations for init failed"
		case ERR_DEMO_OPEN_FAIL: return "failed to open demo"
		case ERR_ILLEGAL_MAGIC: return "invalid format"
		case ERR_PARSE_FAIL: return "demo file parsing failed"
		case ERR_INVALID_VERSION: return "invalid demo version"
		case ERR_READ_ONLY: return "read only"
		case ERR_WRITE_ONLY: return "write only"
		case ERR_WRITE_FAIL: return "failed to write to demo"
		case ERR_NO_FLUSHABLE_EVENTS: return "no events in buffer"
		case ERR_DEMO_CLOSE_FAIL: return "demo close failed"
		case ERR_FLUSH_FAIL: return "ERR_FLUSH_FAIL"
		case ERR_NO_NEXT_EVENT: return "end of demo"
	}
}

function scr_demomanhandler(msg){
	scr_debugmessage(getdemomanerrorstring(demoman_get_error()) + " (" + msg + ")")
}