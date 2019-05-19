import React, { Component } from 'react'
import LifecycleB from './LifecycleB';

 class LifecycleA extends Component {
     constructor(props) {
       super(props)
     
       this.state = {
          name: 'Priyanshu'
       }
       console.log('Constructor');
     }
     static getDerivedStateFromProps(props, state) {
         console.log('Get derivedState From Props');
         return null;
     }
     componentDidMount(){
         console.log('Component did Mount');
     }
  render() {
      console.log('render');
    return (
      <div>
        <LifecycleB />
      </div>
    )
  }
}

export default LifecycleA
