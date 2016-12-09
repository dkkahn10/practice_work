const createStore = () => {
  let state;

  let store = {
    getState() {
      return state;
    }
  };

  return store;
};

const store = createStore();

export default store;
