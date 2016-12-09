// App.js
import React, { Component } from 'react';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      books: []
    };
  }

  render() {
    let books = this.state.books.map(book => {
      return <li>{book}</li>;
    });

    return (
      <div>
        <h1>Books</h1>
        <ul>
          {books}
        </ul>
      </div>
    );
  }
}

export default App;
