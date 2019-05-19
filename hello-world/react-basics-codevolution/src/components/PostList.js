import React, { Component } from 'react';
import axios  from 'axios';

class PostList extends Component {
    constructor(props) {
      super(props)
    
      this.state = {
         posts:[]
      }
    }
    componentDidMount() {
        axios.get('https://jsonplaceholder.typicode.com/posts')
        .then(response => {
            this.setState({
                posts: response.data
            })    
            console.log(response)
        })
        .catch(e => console.log(e));
    }
  render() {
      const {posts} = this.state;
    return (
      <div>
        List of Posts
        {
            posts.map(post => <div key={post.id}> {post.title} </div>)
        }
      </div>
    )
  }
}

export default PostList
