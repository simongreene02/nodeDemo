let students = $STUDENTS_OBJECT;

function StudentItem(props) {
	const [collapsed, setCollapsed] = React.useState(true);
	if (collapsed) {
		return (<li><span>{students[props.studentID]["studentName"]}, </span><a onClick={function () {setCollapsed(false)}} href="javascript:void(0);">Expand</a></li>);
	} else {
		return (
				<li>
					<span>{students[props.studentID]["studentName"]}, </span>
					<a onClick={function () {setCollapsed(true)}} href="javascript:void(0);">Collapse</a>
					<table>
						<tr>
							<th>Name</th>
							<th>Year</th>
							<th>Major</th>
						</tr>
						<tr>
							<td>{students[props.studentID]["studentName"]}</td>
							<td>{students[props.studentID]["year"]}</td>
							<td>{students[props.studentID]["major"]}</td>
						</tr>
					</table>
				</li>
			);
	}
}

const root = ReactDOM.createRoot(document.getElementById('root'));

root.render($STUDENTS_RENDER)
