import React, { Component } from 'react'

 class LifecycleB extends Component {
     constructor(props) {
       super(props)
     
       this.state = {
          name: 'Priyanshu'
       }
       console.log(' Lifecycle B Constructor');
     }
     static getDerivedStateFromProps(props, state) {
         console.log('  Lifecycle B Get derivedState From Props');
         return null;
     }
     componentDidMount(){
         console.log('  Lifecycle B Component did Mount');
     }
  render() {
      console.log('  Lifecycle B render');
    return (
      <div>
        
      </div>
    )
  }
}

export default LifecycleB
