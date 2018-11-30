#!/bin/zsh

DESTINATION=$1
NAME=$2
STYLES=$3

JSXTEMPLATE="import React from 'react'

const $NAME = () => {
  return <div></div>
}

export default $NAME"

SPECTTEMPLATE="import React from 'react'
import { shallow } from 'enzyme'

describe('given $NAME component', () => {
  describe('when trying to render the $NAME component', () => {
    it('should render the $NAME component', () => {
      const component = shallow(<$NAME />)

      expect(component.length).toBe(1)
    })
  })
})

export default $NAME"

INDEXTEMPLATE="export { default } from './$NAME'"

if [ -z "$DESTINATION" ] || [ -z "$NAME" ]
then
  echo "ERROR: Check right format ie: script destination name scss"
else
  mkdir $PWD/$DESTINATION/$NAME
  echo $JSXTEMPLATE > $PWD/$DESTINATION/$NAME/$NAME.jsx
  echo $INDEXTEMPLATE > $PWD/$DESTINATION/$NAME/index.js
  echo $SPECTTEMPLATE > $PWD/$DESTINATION/$NAME/$NAME.spec.js

  echo "JSX and spec created"
  if [[ "$STYLES" ]]
  then
  touch $PWD/$DESTINATION/$NAME/$NAME.$STYLES

  echo "$STYLES created"
  fi
fi

