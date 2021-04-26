import React, { createContext, useEffect, useState } from 'react'
import ChildOne from './ChildOne'
import { IUser } from './model/IUser'

export const NameContext = createContext({})

const Parent = () => {
  const [users, setUsers] = useState<IUser[]>([])
  const [columns, setColumns] = useState<string[]>([]) 
  useEffect(() => {
    _getUser()
  }, [])
  const _getUser = async () => {
    await fetch('https://jsonplaceholder.typicode.com/users').then(res => res.json()).then(data => {
      setUsers(data);
      setColumns(Object.keys(data[0]));
    }).catch(res => console.log(res))
  };
  return (
    <div>
      { users.map(user => (
        user.name
      ))}
      <div></div>
      <NameContext.Provider value={ 'Batsaikhan' }>
        <ChildOne/>
      </NameContext.Provider>

    </div>
  );
};

export default Parent;
