## what is it?

```ruby
  ActivatedRoute provides access to the url, params,
  data, queryParams, and fragment observables.
```

## how to use it?

- in order to use ActivatedRoute and fetch snapshot data

```javascript
 export class ExampleClass implements OnInit {
   constructor (
    private route: ActivatedRoute,
   ) { }

   ngOnInit () {
    this.beneficiary = this.route.snapshot.data.viewData;
   }
 }

```

- you should define it in routing same as below ( we should have resolve )

```javascript
  {
    path        : 'beneficiary', component : BeneficiaryComponent,
    resolve     : { viewData : DataResolverService },
    data        : { resource : 'beneficiary', targetAction : 'show' }
  }
```