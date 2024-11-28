<x-app-layout>
    <header class="bg-blue-200">
        <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
            <div class="flex justify-center">
                <h1 class="text-2xl font-bold">Almacén: {{ $name }}</h1>
            </div>
        </div>
    </header>

    <div class="bg-blue-200 py-6">
        <div class="text-center">
            <p class="text-lg font-medium">Esta es la vista del almacén "{{ $name }}".</p>
        </div>
    </div>
</x-app-layout>
