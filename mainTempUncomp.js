let classes = $CLASSES_OBJECT;

function ClassItem(props) {
	return <li><a href={"displayClass?id="+props.classID}>{classes[props.classID]["className"]}</a></li>;
}

const root = ReactDOM.createRoot(document.getElementById('root'));

root.render($CLASSES_RENDER);
