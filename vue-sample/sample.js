new Vue({
    // By specifying the HTML id in this el, the instance of Vue.js will be imported in the DOM of that id.
    el: '#app',
    // data is an attribute (value) of the defined Vue.js instance
    data: {
      name: '',
      course: '',
      acceptancePeriod: '',
      defaultLastId: 3,
      students: [
        { id: 1, name: 'Hiroyoshi Noro', course: 'Machine learning course', acceptancePeriod: 'January 2019' },
        { id: 2, name: 'Shuji Tominaga', course: 'Web Engineer Course', acceptancePeriod: 'November 2017' },
        { id: 3, name: 'Kazuki Saito', course: 'Web Engineer Course', acceptancePeriod: 'November 2017' }
      ]
    },
    // In methods, describe the method you want to use for the instance of Vue.js
    methods: {
      addStudent: function() {
        this.students.push({ id: this.students.length +1, name: this.name, course: this.course, acceptancePeriod: this.acceptancePeriod })
      }
    }
  })