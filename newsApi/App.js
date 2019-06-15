import React from 'react';
import { FlatList, ActivityIndicator, Text, View, Image, StyleSheet } from 'react-native';

export default class App extends React.Component {

  constructor(props){
    super(props);
    this.state ={ isLoading: true}
  } 

  componentDidMount(){
    return fetch('https://newsapi.org/v2/top-headlines?'+'country=in&' +
                            'apiKey=6bede71c609049799c43a93512d18c20')
      .then((response) => response.json())
      .then((responseJson) => {
        console.log(responseJson);
        this.setState({
          isLoading: false,
          dataSource: responseJson.articles,
        }, function(){
        });

      })
      .catch((error) =>{
        console.error(error);
      });
  }
  render(){
    if(this.state.isLoading){
      return(
        <View style={{flex: 1, padding: 20}}>
          <ActivityIndicator/>
        </View>
      )
    }
    return(
      <View style={{flex: 1, paddingTop:20}}>
        <Text style={{color:'red'}}>The News App</Text>
        <FlatList
          data={this.state.dataSource}
          renderItem={({item}) =>
          <View>
          <Image source={{uri: item.urlToImage}} style={{width:100, height:100}} />
          <Text>{item.title}</Text>
          </View>
          }
            keyExtractor={({id}, index) => id}
        />
      </View>
    );
  }
}