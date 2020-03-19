import React from 'react'
import { ScrollView, StyleSheet } from 'react-native'

import TestItem from './TestItem'

const TestBordersRoundColor: React.FC = () => {
  const bs = {
    borderBottomColor: 'red',
    borderLeftColor: 'blue',
    borderRadius: 10,
    borderRightColor: 'blue',
    borderTopColor: 'red',
    borderWidth: 1,
  }
  return (
    <ScrollView style={s.container} contentContainerStyle={s.content}>
      <TestItem style={bs} />
      <TestItem style={{ ...bs, borderWidth: 20 }} />
      <TestItem style={{ ...bs, borderTopWidth: 1, borderBottomWidth: 1, borderLeftWidth: 20, borderRightWidth: 20 }} />
      <TestItem style={{ ...bs, borderTopWidth: 0, borderBottomWidth: 8, borderLeftWidth: 2, borderRightWidth: 2 }} />
      <TestItem
        style={{
          ...bs,
          borderBottomLeftRadius: 2,
          borderBottomRightRadius: 2,
          borderTopLeftRadius: 40,
          borderTopRightRadius: 40,
          borderWidth: 20,
        }}
      />
    </ScrollView>
  )
}

const s = StyleSheet.create({
  container: {
    flex: 1,
  },
  content: {
    width: 600,
  },
})

export default TestBordersRoundColor
