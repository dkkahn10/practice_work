var Home = React.createClass({
  render: function() {
    return (<h1>Welcome to the Home Page</h1>);
  }
});

ReactDOM.render((
  <Home />
), document.getElementById('root'));
