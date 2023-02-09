"use strict";

let classes = $CLASSES_OBJECT;
function ClassItem(props) {
  return /*#__PURE__*/React.createElement("li", null, /*#__PURE__*/React.createElement("a", {
    href: "displayClass?id=" + props.classID
  }, classes[props.classID]["className"]));
}
const root = ReactDOM.createRoot(document.getElementById('root'));
root.render($CLASSES_RENDER);
