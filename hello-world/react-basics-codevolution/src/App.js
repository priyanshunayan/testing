import React from 'react';
import logo from './logo.svg';
import './App.css';
import Message from  './components/Message'
import Counter from './components/Counter';
import FunctionClick from './components/FunctionClick'
import ClassClick from './components/ClassClick';
import LifecycleA from './components/LifecycleA'
import PostList from './components/PostList';
function App() {
  return (
    <div className="App">
      <PostList />
    </div>
  );
}

export default App;
