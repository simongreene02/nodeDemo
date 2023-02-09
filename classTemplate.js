"use strict";

let students = $STUDENTS_OBJECT;
function StudentItem(props) {
  const [collapsed, setCollapsed] = React.useState(true);
  if (collapsed) {
    return /*#__PURE__*/React.createElement("li", null, /*#__PURE__*/React.createElement("span", null, students[props.studentID]["studentName"], ", "), /*#__PURE__*/React.createElement("a", {
      onClick: function () {
        setCollapsed(false);
      },
      href: "javascript:void(0);"
    }, "Expand"));
  } else {
    return /*#__PURE__*/React.createElement("li", null, /*#__PURE__*/React.createElement("span", null, students[props.studentID]["studentName"], ", "), /*#__PURE__*/React.createElement("a", {
      onClick: function () {
        setCollapsed(true);
      },
      href: "javascript:void(0);"
    }, "Collapse"), /*#__PURE__*/React.createElement("table", null, /*#__PURE__*/React.createElement("tr", null, /*#__PURE__*/React.createElement("th", null, "Name"), /*#__PURE__*/React.createElement("th", null, "Year"), /*#__PURE__*/React.createElement("th", null, "Major")), /*#__PURE__*/React.createElement("tr", null, /*#__PURE__*/React.createElement("td", null, students[props.studentID]["studentName"]), /*#__PURE__*/React.createElement("td", null, students[props.studentID]["year"]), /*#__PURE__*/React.createElement("td", null, students[props.studentID]["major"]))));
  }
}
const root = ReactDOM.createRoot(document.getElementById('root'));
root.render($STUDENTS_RENDER);
