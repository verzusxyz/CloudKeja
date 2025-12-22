<table>
    <thead>
        <tr>
            <th>{{ __('SL') }}.</th>
            <th>{{ __('ID') }}</th>
            <th>{{ __('Property Name') }}</th>
            <th>{{ __('Property Type') }}</th>
            <th>{{ __('Address') }}</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($properties as $property)
        <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $property->puid }}</td>
            <td>{{ $property->propertyDetail->property_info['property_title'] ?? '' }}</td>
            <td>{{ $property->category?->name }}</td>
            <td>{{ $property->address_info['address'] ?? '' }}, {{ $property->address_info['state'] ?? '' }}, {{ $property->address_info['city'] ?? '' }}</td>
        </tr>
        @endforeach
    </tbody>
</table>
