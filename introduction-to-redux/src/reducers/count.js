const initialState = 0;

const count = (state = initialState, action) => {
  switch (action.type) {
    case 'ADD_ONE':
      return state + 1;
    default:
      return state;
  }
};

export default count;
