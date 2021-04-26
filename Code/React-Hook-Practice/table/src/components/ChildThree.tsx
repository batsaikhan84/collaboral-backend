import React, { useContext } from 'react'
import { NameContext } from './Parent'

const ChildThree = () => {
    const name = useContext(NameContext)
    return(
        <div>
            This is ChildThree component. This name: { name } is from parent component.
        </div>
    )
}

export default ChildThree