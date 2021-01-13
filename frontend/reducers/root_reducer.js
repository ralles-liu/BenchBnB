import { combineReducers } from "redux";
import entities_reducer from "./entities_reducer";
import errors_reducer from "./errors_reducer";
import { sessionsReducer } from "./session_reducer";

export default combineReducers({
  entities: entities_reducer,
  session: sessionsReducer,
  error: errors_reducer,
});
