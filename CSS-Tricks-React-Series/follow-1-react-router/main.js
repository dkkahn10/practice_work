var MainLayout = React.createClass({
  render: function() {
    return (
      <div className="app">
        <header className="primary-header"></header>
        <aside className="primary-aside"></aside>
        <main>
          {this.props.children}
        </main>
      </div>
    );
  }
});

var SearchLayout = React.createClass({
  render: function() {
    return (
      <div className="search">
        <header className="search-header"></header>
        <div className="resuts">
          {this.props.children}
        </div>
        <div className="search-footer pagination"></div>
      </div>
    );
  }
});

var UserList = React.createClass({
  render: function() {
    return (
      <ul className="user-list">
        <li>Dan</li>
        <li>Ryan</li>
        <li>Michael</li>
      </ul>
    );
  }
});
